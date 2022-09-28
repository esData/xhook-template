const shelper = require("../../_helpers/steps_helper");
const stepsHelper = new shelper(__dirname);

/* {{StepName}}
 * **SUMMARY:** {{ StepSummary}}
 * 
 * **PARAMETERS:**
 * @param {{params}} {{params_desc}}
 * **OUTPUT:**
 * @param {{params}} {{params_desc}}
 * **RESULT:**
* @param {{params}} {{params_desc}}
 */

module.exports = function (workflowId, stepName, step, log, callback) {
  callback( stepsHelper.setSource( step,stepsHelper.prepare_template(stepName, step, true) ));
};
