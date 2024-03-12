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

defmodule GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickShareMeetingDocsCardProto do
  @moduledoc """
  Share meeting docs card proto.

  ## Attributes

  *   `document` (*type:* `list(GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonDocument.t)`, *default:* `nil`) - Documents to share for the given meeting.
  *   `event` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAgendaEntry.t`, *default:* `nil`) - Event.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :document =>
            list(GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonDocument.t()) | nil,
          :event => GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAgendaEntry.t() | nil
        }

  field(:document,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonDocument,
    type: :list
  )

  field(:event, as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAgendaEntry)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickShareMeetingDocsCardProto do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickShareMeetingDocsCardProto.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickShareMeetingDocsCardProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
