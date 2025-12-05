<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib uri="http://www.springframework.org/tags"
prefix="spring" %>

<div id="ppap_management" class="tab-content container">
    <div class="projects-header d-flex">
        <div class="projects-title">
            <span><i class="bi bi-clipboard-check"></i></span>
            <span><spring:message code="ppapTaskManagement" /></span>
        </div>
        <button class="primary-btn" id="createProjectBtn" onclick="showCreateProjectForm()">
            <span><i class="bi bi-plus-square"></i></span>
            <span><spring:message code="createNewProject" /></span>
        </button>
    </div>

    <!-- Advanced Filter Section -->
    <div class="ppap-section">
        <div class="section-header">
            <span><i class="bi bi-search"></i></span>
            <span><spring:message code="advancedFilter" /></span>
        </div>
        <div class="filter-grid">
            <div class="filter-item">
                <label class="filter-label"><spring:message code="projectNumber" /></label>
                <input type="text" class="filter-select" id="ppapFilterProject" placeholder="Search..." />
            </div>

            <div class="filter-item">
                <label class="filter-label"><spring:message code="projectCustomer" /></label>
                <select class="filter-input" id="projectCustomerSelect">
                    <option value="">--Select--</option>
                    <option value="1">Apollo</option>
                    <option value="2">Rhea</option>
                    <option value="3">Kronos</option>
                </select>
            </div>

            <div class="filter-item">
                <label class="filter-label">Created Date</label>

                <div class="date-range-container">
                    <input type="text" id="createdDateStart" class="filter-input date-picker" placeholder="From" />
                    <span class="date-separator">-</span>
                    <input type="text" id="createdDateEnd" class="filter-input date-picker" placeholder="To" />
                </div>
            </div>
        </div>
        <!-- <div class="filter-grid">
            <div class="filter-item">
                <label class="filter-label"><spring:message code="projectNumber" /></label>
                <select class="filter-select" id="ppapFilterProject">
                    <option value=""><spring:message code="all" /></option>
                    <option value="FTV-001">FTV-001</option>
                    <option value="FTV-002">FTV-002</option>
                    <option value="FTV-003">FTV-003</option>
                    <option value="FTV-004">FTV-004</option>
                    <option value="FTV-005">FTV-005</option>
                </select>
            </div>
            <div class="filter-item">
                <label class="filter-label"><spring:message code="projectCustomer" /></label>
                <select class="filter-select" id="ppapFilterCustomer">
                    <option value=""><spring:message code="all" /></option>
                    <option value="Apple">Apple</option>
                    <option value="Samsung">Samsung</option>
                    <option value="Google">Google</option>
                    <option value="Microsoft">Microsoft</option>
                    <option value="Dell">Dell</option>
                </select>
            </div>
            <div class="filter-item">
                <label class="filter-label"><spring:message code="projectModel" /></label>
                <select class="filter-select" id="ppapFilterModel">
                    <option value=""><spring:message code="all" /></option>
                    <option value="MacBook Pro">MacBook Pro</option>
                    <option value="Galaxy Tab">Galaxy Tab</option>
                    <option value="Pixel Watch">Pixel Watch</option>
                    <option value="Surface Laptop">Surface Laptop</option>
                    <option value="XPS Desktop">XPS Desktop</option>
                </select>
            </div>
            <div class="filter-item">
                <label class="filter-label"><spring:message code="xvtStage" /></label>
                <select class="filter-select" id="ppapFilterStage">
                    <option value=""><spring:message code="all" /></option>
                    <option value="HVT">HVT</option>
                    <option value="EVT">EVT</option>
                    <option value="DVT">DVT</option>
                    <option value="PVT">PVT</option>
                    <option value="MP">MP</option>
                </select>
            </div>
            <div class="filter-item">
                <label class="filter-label"><spring:message code="taskStatus" /></label>
                <select class="filter-select" id="ppapFilterStatus">
                    <option value=""><spring:message code="all" /></option>
                    <option value="pending"><spring:message code="pending" /></option>
                    <option value="in-progress"><spring:message code="inProgress" /></option>
                    <option value="completed"><spring:message code="completed" /></option>
                </select>
            </div>
            <div class="filter-item">
                <label class="filter-label"><spring:message code="priority" /></label>
                <select class="filter-select" id="ppapFilterPriority">
                    <option value=""><spring:message code="all" /></option>
                    <option value="high"><spring:message code="high" /></option>
                    <option value="medium"><spring:message code="medium" /></option>
                    <option value="low"><spring:message code="low" /></option>
                </select>
            </div>
            <div class="filter-item">
                <label class="filter-label"><spring:message code="department" /></label>
                <select class="filter-select" id="ppapFilterDepartment">
                    <option value=""><spring:message code="all" /></option>
                    <option value="PQE">PQE</option>
                    <option value="TPM">TPM</option>
                    <option value="RD">RD</option>
                    <option value="PE">PE</option>
                    <option value="ME">ME</option>
                    <option value="PQA">PQA</option>
                    <option value="SQE">SQE</option>
                    <option value="IQC">IQC</option>
                </select>
            </div>
            <div class="filter-item">
                <label class="filter-label"><spring:message code="process" /></label>
                <select class="filter-select" id="ppapFilterProcess">
                    <option value=""><spring:message code="all" /></option>
                    <option value="Supplier">Supplier</option>
                    <option value="IQC">IQC</option>
                    <option value="Kitting">Kitting</option>
                    <option value="SMT">SMT</option>
                    <option value="PCBA">PCBA</option>
                    <option value="Assembly">Assembly</option>
                    <option value="Test">Test</option>
                    <option value="Pack">Pack</option>
                    <option value="OBA">OBA</option>
                    <option value="WH">WH</option>
                    <option value="OTH">OTH</option>
                </select>
            </div>
            <div class="filter-item">
                <label class="filter-label"><spring:message code="dri" /></label>
                <select class="filter-select" id="ppapFilterDRI">
                    <option value=""><spring:message code="all" /></option>
                    <option value="張工程師">張工程師</option>
                    <option value="李經理">李經理</option>
                    <option value="王品保">王品保</option>
                    <option value="林製程">林製程</option>
                    <option value="周工程師">周工程師</option>
                </select>
            </div>
            <div class="filter-item">
                <label class="filter-label"><spring:message code="deadline" /></label>
                <input type="date" class="filter-input" id="ppapFilterDeadline" />
            </div>
            <div class="filter-item d-flex">
                <label class="filter-label"><spring:message code="searchKeyword" /></label>
                <input type="text" class="filter-input" id="ppapFilterSearch" placeholder="輸入關鍵字..." />
            </div>
        </div> -->
    </div>

    <!-- Project List Section (Default Visible) -->
    <div class="ppap-section" id="projectListSection">
        <div class="section-header">
            <span><i class="bi bi-list-ul"></i></span>
            <span>Project List</span>
        </div>
        <div id="projectListContainer">
            <table class="task-list-table">
                <thead>
                    <tr>
                        <th style="width: 40px"><i class="bi bi-grip-vertical"></i></th>
                        <th><spring:message code="customer" /></th>
                        <th><spring:message code="projectName" /></th>
                        <th>Create Date</th>
                        <th><spring:message code="status" /></th>
                        <th><spring:message code="actions" /></th>
                    </tr>
                </thead>
                <tbody id="otherProjectsBody"></tbody>
            </table>
        </div>
    </div>

    <div class="ppap-section" id="operationOptionsSection" style="display: none">
        <div class="section-header">
            <span><i class="bi bi-gear"></i></span>
            <span><spring:message code="operationOptions" /></span>
        </div>
        <div class="action-buttons-row">
            <button class="action-btn" onclick="showStandardPPAP()">
                <span><i class="bi bi-clipboard-check"></i></span>
                <span><spring:message code="standard26PPAP" /></span>
            </button>
            <button class="action-btn" onclick="showCustomTask()">
                <span><i class="bi bi-plus-circle"></i></span>
                <span><spring:message code="customTask" /></span>
            </button>
            <button class="action-btn" onclick="showCopyTemplate()">
                <span><i class="bi bi-clipboard-check"></i></span>
                <span><spring:message code="copyProjectTemplate" /></span>
            </button>
        </div>
        <div class="bottom-actions" style="margin-top: 20px">
            <button class="secondary-btn" onclick="cancelProjectCreation()">
                <span><i class="bi bi-x-circle"></i></span>
                <span>Cancel</span>
            </button>
            <button class="secondary-btn" onclick="showRACIMatrix()">
                <span><i class="bi bi-grid-3x3"></i></span>
                <span><spring:message code="viewRACIMatrix" /></span>
            </button>
            <button class="primary-btn" onclick="submitProject()">
                <span><i class="bi bi-check-circle"></i></span>
                <span><spring:message code="submitProject" /></span>
            </button>
        </div>
    </div>
</div>

<!-- Standard PPAP Modal -->
<div
    id="standardPPAPModal"
    class="modal fade"
    tabindex="-1"
    aria-labelledby="standardPPAPModalLabel"
    aria-hidden="true"
>
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-title" id="standardPPAPModalLabel">
                    <span><i class="bi bi-clipboard-check"></i></span>
                    <span><spring:message code="standardPPAPTitle" /></span>
                </div>
                <button type="button" class="btn-close close-btn" data-bs-dismiss="modal" aria-label="Close">
                    <i class="bi bi-x-lg"></i>
                </button>
            </div>
            <div class="modal-body">
                <p style="color: var(--text-secondary); margin-bottom: 20px">
                    <span>Select task to add to the project:</span>
                </p>
                <div class="ppap-actions">
                    <button class="select-all-btn" onclick="selectAllPPAP()">
                        <span><i class="bi bi-check-square"></i> 全選</span>
                    </button>
                    <button class="deselect-all-btn" onclick="deselectAllPPAP()">
                        <span><i class="bi bi-square"></i> Cancel全選</span>
                    </button>
                </div>
                <div class="ppap-tasks-grid" id="ppapTasksGrid">
                    <!-- PPAP tasks will be populated here -->
                </div>
            </div>
            <div class="modal-footer bottom-actions mt-0">
                <button type="button" class="secondary-btn" data-bs-dismiss="modal">
                    <span><i class="bi bi-x-lg"></i></span>
                    <span>Cancel</span>
                </button>
                <button type="button" class="primary-btn" onclick="confirmPPAPSelection()">
                    <span><i class="bi bi-check-lg"></i></span>
                    <span>Confirm</span>
                </button>
            </div>
        </div>
    </div>
</div>

<!-- Project Tasks Modal-->
<div
    id="projectTasksModal"
    class="modal fade"
    tabindex="-1"
    aria-labelledby="projectTasksModalLabel"
    aria-hidden="true"
>
    <div class="modal-dialog modal-xl modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-title" id="projectTasksModalLabel">
                    <span><i class="bi bi-list-task"></i></span>
                    <span>Project Tasks</span>
                </div>
                <button type="button" class="btn-close close-btn" data-bs-dismiss="modal" aria-label="Close">
                    <i class="bi bi-x-lg"></i>
                </button>
            </div>
            <div class="modal-body">
                <div class="detail-operation-list" style="display: flex; gap: 16px; align-items: flex-start">
                    <div
                        class="detail-block"
                        style="
                            flex: 1;
                            min-width: 220px;
                            border: 1px solid var(--border);
                            padding: 12px;
                            border-radius: 6px;
                            background: var(--secondary-bg);
                        "
                    >
                        <div class="component-title">
                            <span style="font-weight: 600; margin-bottom: 8px">Detail</span>
                        </div>
                        <input type="hidden" id="pt_detail_projectId" />

                        <div class="filter-grid">
                            <div class="filter-item">
                                <label class="filter-label" for="pt_detail_customer">Customer</label>
                                <input type="text" class="filter-input" id="pt_detail_customer" placeholder="" />
                            </div>

                            <div class="filter-item">
                                <label class="filter-label" for="pt_detail_projectName">Project</label>
                                <input type="text" class="filter-input" id="pt_detail_projectName" placeholder="" />
                            </div>

                            <div class="filter-item">
                                <label class="filter-label" for="pt_detail_createdDate">Created</label>
                                <input type="text" class="filter-input" id="pt_detail_createdDate" />
                            </div>

                            <div class="filter-item">
                                <label class="filter-label">Status</label>
                                <input type="text" class="filter-input" id="pt_detail_status" />
                            </div>
                        </div>
                        <div class="d-flex justify-content-end"></div>
                    </div>
                </div>
                <div
                    id="operation-add"
                    class="operation-block mt-3"
                    style="
                        flex: 2;
                        min-width: 320px;
                        border: 1px solid var(--border);
                        padding: 12px;
                        border-radius: 6px;
                        background: var(--card-bg);
                    "
                >
                    <div class="component-title">
                        <div style="font-weight: 600; margin-bottom: 8px">Operation Options</div>
                    </div>
                    <div class="action-buttons-row" style="display: flex; gap: 8px; flex-wrap: wrap">
                        <button class="action-btn" onclick="showStandardPPAP()">
                            <span><i class="bi bi-clipboard-check"></i></span>
                            <span>26 Standard PPAP</span>
                        </button>
                        <button class="action-btn" onclick="showCustomTask()">
                            <span><i class="bi bi-plus-circle"></i></span>
                            <span>Custom Task</span>
                        </button>
                        <button class="action-btn" onclick="showCopyTemplate()">
                            <span><i class="bi bi-clipboard-check"></i></span>
                            <span>Copy From Template</span>
                        </button>
                    </div>
                </div>
                <div class="component-title mt-3">
                    <span><i class="bi bi-list-task"></i> Tasks List: </span>
                </div>
                <div style="margin-top: 12px" id="projectTasksContent"></div>
            </div>
            <div class="modal-footer bottom-actions mt-0">
                <button type="button" class="secondary-btn" data-bs-dismiss="modal">
                    <span><i class="bi bi-x-lg"></i></span>
                    <span>Close</span>
                </button>
                <button class="btn action-btn btn-secondary" onclick="saveProjectTaskQuantity()">
                    <i class="bi bi-floppy"></i> Save
                </button>
                <button class="btn btn-secondary action-btn" onclick="projectTasksSubmit()">
                    <i class="bi bi-check-circle"></i> Submit
                </button>
            </div>
        </div>
    </div>
</div>

<!-- Edit Task Modal -->
<!-- <div id="editTaskModal" class="modal fade" tabindex="-1" aria-labelledby="editTaskModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-title" id="editTaskModalLabel">
                    <span><i class="bi bi-pencil-square"></i></span>
                    <span>編輯任務</span>
                </div>
                <button type="button" class="btn-close close-btn" data-bs-dismiss="modal" aria-label="Close">
                    <i class="bi bi-x-lg"></i>
                </button>
            </div>
            <div class="modal-body">
                <input type="hidden" id="editTaskProjectId" />
                <input type="hidden" id="editTaskId" />
                <div class="form-group">
                    <label class="form-label">Task Code</label>
                    <input id="editTaskCode" type="text" class="form-input" />
                </div>
                <div class="form-group">
                    <label class="form-label">Task Name</label>
                    <input id="editTaskName" type="text" class="form-input" />
                </div>
                <div class="form-group">
                    <label class="form-label">Description</label>
                    <textarea id="editTaskDesc" class="form-input" rows="3"></textarea>
                </div>
                <div class="form-group">
                    <label class="form-label">Status</label>
                    <input id="editTaskStatus" type="text" class="form-input" />
                </div>
                <div class="form-group">
                    <label class="form-label">Priority</label>
                    <input id="editTaskPriority" type="text" class="form-input" />
                </div>
            </div>
            <div class="modal-footer bottom-actions mt-0">
                <button type="button" class="secondary-btn" data-bs-dismiss="modal">
                    <span>Cancel</span>
                </button>
                <button type="button" class="primary-btn" onclick="saveEditedTask()">
                    <span>儲存</span>
                </button>
            </div>
        </div>
    </div>
</div> -->

<!-- Custom Task Modal -->
<div id="customTaskModal" class="modal fade" tabindex="-1" aria-labelledby="customTaskModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content modal-content-wide">
            <div class="modal-header">
                <div class="modal-title" id="customTaskModalLabel">
                    <span><i class="bi bi-plus-circle"></i></span>
                    <span>Add custom task</span>
                </div>
                <button type="button" class="btn-close close-btn" data-bs-dismiss="modal" aria-label="Close">
                    <i class="bi bi-x-lg"></i>
                </button>
            </div>
            <div class="modal-body">
                <div class="project-form-grid">
                    <div class="form-group">
                        <label class="form-label">Task Name <span class="required">*</span></label>
                        <input type="text" class="form-input" placeholder="輸入任務名稱" />
                    </div>
                    <div class="form-group">
                        <label class="form-label">ID <span class="required">*</span></label>
                        <input type="text" class="form-input" placeholder="e.g., CUSTOM-001" />
                    </div>
                    <div class="form-group">
                        <label class="form-label">xVT <span class="required">*</span></label>
                        <select id="custom-sl-xvt" class="form-select"></select>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Department <span class="required">*</span></label>
                        <select id="custom-sl-department" class="form-select"></select>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Process <span class="required">*</span></label>
                        <select id="custom-sl-process" class="form-select"></select>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Priority <span class="required">*</span></label>
                        <select id="custom-sl-priority" class="form-select"></select>
                    </div>
                    <div class="form-group">
                        <label class="form-label">DRI <span class="required">*</span></label>
                        <input type="text" class="form-input" placeholder="Enter DRI ID card" />
                    </div>
                    <div class="form-group">
                        <label class="form-label">Deadline <span class="required">*</span></label>
                        <input type="date" class="form-input" />
                    </div>
                    <div class="form-group" style="grid-column: 1 / -1">
                        <label class="form-label">Task Description</label>
                        <textarea
                            class="form-input"
                            style="min-height: 80px; resize: vertical"
                            placeholder="Enter task description..."
                        ></textarea>
                    </div>
                </div>
            </div>
            <div class="modal-footer bottom-actions mt-0">
                <button type="button" class="secondary-btn" data-bs-dismiss="modal">
                    <span><i class="bi bi-x-lg"></i></span>
                    <span>Cancel</span>
                </button>
                <button type="button" class="primary-btn">
                    <span><i class="bi bi-check-lg"></i></span>
                    <span>Add Task</span>
                </button>
            </div>
        </div>
    </div>
</div>

<!-- Copy Template Modal -->
<div
    id="copyTemplateModal"
    class="modal fade"
    tabindex="-1"
    aria-labelledby="copyTemplateModalLabel"
    aria-hidden="true"
>
    <div class="modal-dialog modal-xl">
        <div class="modal-content modal-content-wide">
            <div class="modal-header">
                <div class="modal-title">
                    <span><i class="bi bi-clipboard-check"></i></span>
                    <span>複製專案模板</span>
                </div>
                <button type="button" class="btn-close close-btn" data-bs-dismiss="modal" aria-label="Close">
                    <i class="bi bi-x-lg"></i>
                </button>
            </div>
            <div class="modal-body">
                <p style="color: var(--text-secondary); margin-bottom: 20px">
                    選擇現有專案作為模板，並將其任務列表複製到新專案：
                </p>
                <div class="info-section" style="margin-bottom: 20px">
                    <div class="section-title">
                        <span><i class="bi bi-box-arrow-up"></i></span>
                        <span>來源專案</span>
                    </div>
                    <div class="project-form-grid">
                        <div class="form-group">
                            <label class="form-label"><span>來源客戶</span> <span class="required">*</span></label>
                            <select class="form-select">
                                <option value="">請選擇</option>
                                <option value="Apollo">Apollo</option>
                                <option value="Rhea">Rhea</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="form-label"><span>來源專案編號</span> <span class="required">*</span></label>
                            <select class="form-select">
                                <option value="">請選擇</option>
                                <option value="FTV-001">FTV-001</option>
                                <option value="FTV-002">FTV-002</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="form-label"><span>來源 xVT 階段</span> <span class="required">*</span></label>
                            <select class="form-select">
                                <option value="">請選擇</option>
                                <option value="HVT">HVT</option>
                                <option value="EVT">EVT</option>
                                <option value="DVT">DVT</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="form-label"><span>來源製程</span> <span class="required">*</span></label>
                            <select class="form-select">
                                <option value="">請選擇</option>
                                <option value="設計">設計</option>
                                <option value="工程">工程</option>
                                <option value="驗證">驗證</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="info-section">
                    <div class="section-title">
                        <span><i class="bi bi-box-arrow-in-down"></i></span>
                        <span>目標專案</span>
                    </div>
                    <div class="project-form-grid">
                        <div class="form-group">
                            <label class="form-label"><span>目標客戶</span> <span class="required">*</span></label>
                            <select class="form-select">
                                <option value="">請選擇</option>
                                <option value="Apollo">Apollo</option>
                                <option value="Rhea">Rhea</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="form-label"><span>目標專案編號</span> <span class="required">*</span></label>
                            <input type="text" class="form-input" placeholder="例: FTV-004" />
                        </div>
                        <div class="form-group">
                            <label class="form-label"><span>目標 xVT 階段</span> <span class="required">*</span></label>
                            <select class="form-select">
                                <option value="">請選擇</option>
                                <option value="HVT">HVT</option>
                                <option value="EVT">EVT</option>
                                <option value="DVT">DVT</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="form-label"><span>目標製程</span> <span class="required">*</span></label>
                            <select class="form-select">
                                <option value="">請選擇</option>
                                <option value="設計">設計</option>
                                <option value="工程">工程</option>
                                <option value="驗證">驗證</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer bottom-actions mt-0">
                <button type="button" class="secondary-btn" data-bs-dismiss="modal">
                    <span><i class="bi bi-x-lg"></i></span>
                    <span>Cancel</span>
                </button>
                <button type="button" class="primary-btn">
                    <span><i class="bi bi-check-lg"></i></span>
                    <span>確認複製</span>
                </button>
            </div>
        </div>
    </div>
</div>

<!-- RACI Matrix Modal -->
<div id="raciMatrixModal" class="modal fade" tabindex="-1" aria-labelledby="raciMatrixModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content modal-content-large">
            <div class="modal-header">
                <h5 class="modal-title" id="raciMatrixModalLabel">
                    <span><i class="bi bi-bar-chart-line"></i></span>
                    <span><spring:message code="raciMatrixTitle" /></span>
                </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div style="margin-bottom: 20px">
                    <div style="display: grid; grid-template-columns: repeat(4, 1fr); gap: 15px; margin-bottom: 20px">
                        <div
                            style="
                                background: rgba(76, 175, 80, 0.1);
                                padding: 15px;
                                border-radius: 8px;
                                border: 1px solid var(--accent-green);
                            "
                        >
                            <h3 style="color: var(--accent-green); margin-bottom: 8px">R - Responsible (執行者)</h3>
                            <p style="font-size: 13px; color: var(--text-secondary)">負責執行任務的人員</p>
                        </div>
                        <div
                            style="
                                background: rgba(33, 150, 243, 0.1);
                                padding: 15px;
                                border-radius: 8px;
                                border: 1px solid var(--accent-blue);
                            "
                        >
                            <h3 style="color: var(--accent-blue); margin-bottom: 8px">A - Accountable (負責者)</h3>
                            <p style="font-size: 13px; color: var(--text-secondary)">最終負責並有決策權的人</p>
                        </div>
                        <div
                            style="
                                background: rgba(255, 152, 0, 0.1);
                                padding: 15px;
                                border-radius: 8px;
                                border: 1px solid var(--accent-orange);
                            "
                        >
                            <h3 style="color: var(--accent-orange); margin-bottom: 8px">C - Consulted (諮詢者)</h3>
                            <p style="font-size: 13px; color: var(--text-secondary)">需要被諮詢意見的人</p>
                        </div>
                        <div
                            style="
                                background: rgba(33, 150, 243, 0.1);
                                padding: 15px;
                                border-radius: 8px;
                                border: 1px solid var(--accent-blue);
                            "
                        >
                            <h3 style="color: var(--accent-blue); margin-bottom: 8px">I - Informed (告知者)</h3>
                            <p style="font-size: 13px; color: var(--text-secondary)">需要被告知進度的人</p>
                        </div>
                    </div>
                </div>

                <div style="overflow-x: auto">
                    <table class="raci-matrix-table">
                        <thead>
                            <tr>
                                <th style="min-width: 150px">任務</th>
                                <th>PQE</th>
                                <th>TPM</th>
                                <th>OPM</th>
                                <th>MPM</th>
                                <th>RD</th>
                                <th>SW</th>
                                <th>PE</th>
                                <th>ME</th>
                                <th>TE</th>
                                <th>IE</th>
                                <th>IT</th>
                                <th>SMT</th>
                                <th>SI</th>
                                <th>WH</th>
                                <th>Kitting</th>
                                <th>IQC</th>
                                <th>SQE</th>
                                <th>PQA</th>
                            </tr>
                        </thead>
                        <tbody id="raciMatrixBody"></tbody>
                    </table>
                </div>
            </div>
            <div class="modal-footer bottom-actions mt-0" style="justify-content: center">
                <button type="button" class="secondary-btn" data-bs-dismiss="modal">
                    <span><i class="bi bi-x-lg"></i></span>
                    <span>Close</span>
                </button>
            </div>
        </div>
    </div>
</div>

<div
    id="createProjectModal"
    class="modal fade"
    tabindex="-1"
    aria-labelledby="createProjectModalLabel"
    aria-hidden="true"
>
    <div class="modal-dialog modal-xl">
        <div class="modal-content modal-content-large">
            <div class="modal-header">
                <h5 class="modal-title" id="createProjectModalLabel">
                    <span><i class="bi bi-plus-square"></i></span>
                    <span><spring:message code="createNewProject" /></span>
                    <span
                        id="createProjectModalMeta"
                        style="
                            margin-left: 12px;
                            color: inherit;
                            font-size: inherit;
                            font-weight: inherit;
                            display: none;
                        "
                    ></span>
                </h5>
                <button type="button" class="btn-close close-btn" data-bs-dismiss="modal" aria-label="Close">
                    <i class="bi bi-x-lg"></i>
                </button>
            </div>
            <div class="modal-body">
                <!-- Step 1: Basic Create Form -->
                <div id="createProjectStep1">
                    <div class="project-form-grid">
                        <div class="form-group">
                            <label class="form-label">
                                <spring:message code="customer" /> <span class="required">*</span>
                            </label>
                            <select class="form-select" id="newProjectCustomer">
                                <option value=""><spring:message code="pleaseSelect" /></option>
                                <option value="1">Apollo</option>
                                <option value="2">Rhea</option>
                                <option value="3">Kronos</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="form-label">
                                <spring:message code="projectName" /> <span class="required">*</span>
                            </label>
                            <input type="text" class="form-input" id="newProjectName" placeholder="例: FTV-004" />
                        </div>
                    </div>
                </div>

                <!-- Step 2: Operation Options + Selected Tasks -->
                <div id="createProjectStep2" style="display: none">
                    <div class="ppap-section" style="margin-bottom: 10px">
                        <div class="section-header">
                            <span><i class="bi bi-gear"></i></span>
                            <span><spring:message code="operationOptions" /></span>
                        </div>
                        <div class="action-buttons-row">
                            <button class="action-btn" onclick="showStandardPPAP()">
                                <span><i class="bi bi-clipboard-check"></i></span>
                                <span><spring:message code="standard26PPAP" /></span>
                            </button>
                            <button class="action-btn" onclick="showCustomTask()">
                                <span><i class="bi bi-plus-circle"></i></span>
                                <span><spring:message code="customTask" /></span>
                            </button>
                            <button class="action-btn" onclick="showCopyTemplate()">
                                <span><i class="bi bi-clipboard-check"></i></span>
                                <span><spring:message code="copyProjectTemplate" /></span>
                            </button>
                        </div>
                    </div>

                    <div class="ppap-section">
                        <div class="section-header">
                            <span><i class="bi bi-list-ul"></i></span>
                            <span>Selected task</span>
                        </div>
                        <div
                            id="selectedTasksList"
                            style="
                                min-height: 120px;
                                border: 1px solid var(--border);
                                padding: 12px;
                                border-radius: 6px;
                            "
                        >
                            <div style="color: var(--text-secondary)">No tasks selected.</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer bottom-actions mt-0">
                <button type="button" class="secondary-btn" data-bs-dismiss="modal" onclick="closeCreateProjectModal()">
                    <span><i class="bi bi-x-lg"></i></span>
                    <span>Cancel</span>
                </button>
                <button
                    type="button"
                    class="secondary-btn"
                    id="createBackBtn"
                    style="display: none"
                    onclick="createModalBackToStep1()"
                >
                    <span><i class="bi bi-arrow-left"></i></span>
                    <span>返回</span>
                </button>
                <button type="button" class="primary-btn" id="createNextBtn" onclick="saveProjectBasicInfoModal()">
                    <span><i class="bi bi-floppy"></i></span>
                    <span>下一步</span>
                </button>
                <button
                    type="button"
                    class="primary-btn"
                    id="createSaveBtn"
                    style="display: none"
                    onclick="submitProjectFromModal()"
                >
                    <span><i class="bi bi-check-circle"></i></span>
                    <span>Save</span>
                </button>
            </div>
        </div>
    </div>
</div>
<script src="/sample-system/js/modules/ppap_management.js"></script>
