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

defmodule GoogleApi.DFAReporting.V28.Model.CrossDimensionReachReportCompatibleFields do
  @moduledoc """
  Represents fields that are compatible to be selected for a report of type \&quot;CROSS_DIMENSION_REACH\&quot;.

  ## Attributes

  - breakdown ([Dimension]): Dimensions which are compatible to be selected in the \&quot;breakdown\&quot; section of the report. Defaults to: `null`.
  - dimensionFilters ([Dimension]): Dimensions which are compatible to be selected in the \&quot;dimensionFilters\&quot; section of the report. Defaults to: `null`.
  - kind (String.t): The kind of resource this is, in this case dfareporting#crossDimensionReachReportCompatibleFields. Defaults to: `null`.
  - metrics ([Metric]): Metrics which are compatible to be selected in the \&quot;metricNames\&quot; section of the report. Defaults to: `null`.
  - overlapMetrics ([Metric]): Metrics which are compatible to be selected in the \&quot;overlapMetricNames\&quot; section of the report. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :breakdown => list(GoogleApi.DFAReporting.V28.Model.Dimension.t()),
          :dimensionFilters => list(GoogleApi.DFAReporting.V28.Model.Dimension.t()),
          :kind => any(),
          :metrics => list(GoogleApi.DFAReporting.V28.Model.Metric.t()),
          :overlapMetrics => list(GoogleApi.DFAReporting.V28.Model.Metric.t())
        }

  field(:breakdown, as: GoogleApi.DFAReporting.V28.Model.Dimension, type: :list)
  field(:dimensionFilters, as: GoogleApi.DFAReporting.V28.Model.Dimension, type: :list)
  field(:kind)
  field(:metrics, as: GoogleApi.DFAReporting.V28.Model.Metric, type: :list)
  field(:overlapMetrics, as: GoogleApi.DFAReporting.V28.Model.Metric, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.DFAReporting.V28.Model.CrossDimensionReachReportCompatibleFields do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.CrossDimensionReachReportCompatibleFields.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DFAReporting.V28.Model.CrossDimensionReachReportCompatibleFields do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
