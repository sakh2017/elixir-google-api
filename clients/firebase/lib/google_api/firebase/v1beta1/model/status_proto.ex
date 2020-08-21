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

defmodule GoogleApi.Firebase.V1beta1.Model.StatusProto do
  @moduledoc """
  Wire-format for a Status object

  ## Attributes

  *   `canonicalCode` (*type:* `integer()`, *default:* `nil`) - The canonical error code (see codes.proto) that most closely corresponds to this status. May be missing.
  *   `code` (*type:* `integer()`, *default:* `nil`) - Numeric code drawn from the space specified below. Often, this is the canonical error space, and code is drawn from google3/util/task/codes.proto
  *   `message` (*type:* `String.t`, *default:* `nil`) - Detail message
  *   `messageSet` (*type:* `GoogleApi.Firebase.V1beta1.Model.MessageSet.t`, *default:* `nil`) - message_set associates an arbitrary proto message with the status.
  *   `space` (*type:* `String.t`, *default:* `nil`) - The following are usually only present when code != 0 Space to which this status belongs
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :canonicalCode => integer(),
          :code => integer(),
          :message => String.t(),
          :messageSet => GoogleApi.Firebase.V1beta1.Model.MessageSet.t(),
          :space => String.t()
        }

  field(:canonicalCode)
  field(:code)
  field(:message)
  field(:messageSet, as: GoogleApi.Firebase.V1beta1.Model.MessageSet)
  field(:space)
end

defimpl Poison.Decoder, for: GoogleApi.Firebase.V1beta1.Model.StatusProto do
  def decode(value, options) do
    GoogleApi.Firebase.V1beta1.Model.StatusProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firebase.V1beta1.Model.StatusProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
