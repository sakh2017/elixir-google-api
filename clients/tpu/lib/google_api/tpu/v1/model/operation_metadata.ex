# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.TPU.V1.Model.OperationMetadata do
  @moduledoc """
  Represents the metadata of the long-running operation.

  ## Attributes

  - apiVersion (String.t): [Output only] API version used to start the operation. Defaults to: `null`.
  - cancelRequested (boolean()): [Output only] Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to &#x60;Code.CANCELLED&#x60;. Defaults to: `null`.
  - createTime (DateTime.t): [Output only] The time the operation was created. Defaults to: `null`.
  - endTime (DateTime.t): [Output only] The time the operation finished running. Defaults to: `null`.
  - statusDetail (String.t): [Output only] Human-readable status of the operation, if any. Defaults to: `null`.
  - target (String.t): [Output only] Server-defined resource path for the target of the operation. Defaults to: `null`.
  - verb (String.t): [Output only] Name of the verb executed by the operation. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiVersion => any(),
          :cancelRequested => any(),
          :createTime => DateTime.t(),
          :endTime => DateTime.t(),
          :statusDetail => any(),
          :target => any(),
          :verb => any()
        }

  field(:apiVersion)
  field(:cancelRequested)
  field(:createTime, as: DateTime)
  field(:endTime, as: DateTime)
  field(:statusDetail)
  field(:target)
  field(:verb)
end

defimpl Poison.Decoder, for: GoogleApi.TPU.V1.Model.OperationMetadata do
  def decode(value, options) do
    GoogleApi.TPU.V1.Model.OperationMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TPU.V1.Model.OperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
