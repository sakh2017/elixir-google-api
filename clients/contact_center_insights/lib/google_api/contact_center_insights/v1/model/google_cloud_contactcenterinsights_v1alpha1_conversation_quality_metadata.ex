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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadata do
  @moduledoc """
  Conversation metadata related to quality management.

  ## Attributes

  *   `agentInfo` (*type:* `list(GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadataAgentInfo.t)`, *default:* `nil`) - Information about agents involved in the call.
  *   `customerSatisfactionRating` (*type:* `integer()`, *default:* `nil`) - An arbitrary integer value indicating the customer's satisfaction rating.
  *   `menuPath` (*type:* `String.t`, *default:* `nil`) - An arbitrary string value specifying the menu path the customer took.
  *   `waitDuration` (*type:* `String.t`, *default:* `nil`) - The amount of time the customer waited to connect with an agent.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :agentInfo =>
            list(
              GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadataAgentInfo.t()
            )
            | nil,
          :customerSatisfactionRating => integer() | nil,
          :menuPath => String.t() | nil,
          :waitDuration => String.t() | nil
        }

  field(:agentInfo,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadataAgentInfo,
    type: :list
  )

  field(:customerSatisfactionRating)
  field(:menuPath)
  field(:waitDuration)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadata do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
