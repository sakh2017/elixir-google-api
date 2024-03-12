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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1CreateAnalysisOperationMetadata do
  @moduledoc """
  Metadata for a create analysis operation.

  ## Attributes

  *   `annotatorSelector` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector.t`, *default:* `nil`) - Output only. The annotator selector used for the analysis (if any).
  *   `conversation` (*type:* `String.t`, *default:* `nil`) - Output only. The Conversation that this Analysis Operation belongs to.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the operation was created.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the operation finished running.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotatorSelector =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector.t()
            | nil,
          :conversation => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :endTime => DateTime.t() | nil
        }

  field(:annotatorSelector,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector
  )

  field(:conversation)
  field(:createTime, as: DateTime)
  field(:endTime, as: DateTime)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1CreateAnalysisOperationMetadata do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1CreateAnalysisOperationMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1CreateAnalysisOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
