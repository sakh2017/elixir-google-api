# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Dataflow.V1b3.Model.StageSummary do
  @moduledoc """
  Information about a particular execution stage of a job.

  ## Attributes

  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - End time of this stage. If the work item is completed, this is the actual end time of the stage. Otherwise, it is the predicted end time.
  *   `metrics` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.MetricUpdate.t)`, *default:* `nil`) - Metrics for this stage.
  *   `progress` (*type:* `GoogleApi.Dataflow.V1b3.Model.ProgressTimeseries.t`, *default:* `nil`) - Progress for this stage. Only applicable to Batch jobs.
  *   `stageId` (*type:* `String.t`, *default:* `nil`) - ID of this stage
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Start time of this stage.
  *   `state` (*type:* `String.t`, *default:* `nil`) - State of this stage.
  *   `stragglerSummary` (*type:* `GoogleApi.Dataflow.V1b3.Model.StragglerSummary.t`, *default:* `nil`) - Straggler summary for this stage.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t() | nil,
          :metrics => list(GoogleApi.Dataflow.V1b3.Model.MetricUpdate.t()) | nil,
          :progress => GoogleApi.Dataflow.V1b3.Model.ProgressTimeseries.t() | nil,
          :stageId => String.t() | nil,
          :startTime => DateTime.t() | nil,
          :state => String.t() | nil,
          :stragglerSummary => GoogleApi.Dataflow.V1b3.Model.StragglerSummary.t() | nil
        }

  field(:endTime, as: DateTime)
  field(:metrics, as: GoogleApi.Dataflow.V1b3.Model.MetricUpdate, type: :list)
  field(:progress, as: GoogleApi.Dataflow.V1b3.Model.ProgressTimeseries)
  field(:stageId)
  field(:startTime, as: DateTime)
  field(:state)
  field(:stragglerSummary, as: GoogleApi.Dataflow.V1b3.Model.StragglerSummary)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.StageSummary do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.StageSummary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.StageSummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
