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

defmodule GoogleApi.BigQuery.V2.Model.JobConfigurationQuery do
  @moduledoc """


  ## Attributes

  - allowLargeResults (boolean()): [Optional] If true and query uses legacy SQL dialect, allows the query to produce arbitrarily large result tables at a slight cost in performance. Requires destinationTable to be set. For standard SQL queries, this flag is ignored and large results are always allowed. However, you must still set destinationTable when result size exceeds the allowed maximum response size. Defaults to: `null`.
  - clustering (Clustering): [Beta] Clustering specification for the destination table. Must be specified with time-based partitioning, data in the table will be first partitioned and subsequently clustered. Defaults to: `null`.
  - createDisposition (String.t): [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a &#39;notFound&#39; error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion. Defaults to: `null`.
  - defaultDataset (DatasetReference): [Optional] Specifies the default dataset to use for unqualified table names in the query. Note that this does not alter behavior of unqualified dataset names. Defaults to: `null`.
  - destinationEncryptionConfiguration (EncryptionConfiguration): Custom encryption configuration (e.g., Cloud KMS keys). Defaults to: `null`.
  - destinationTable (TableReference): [Optional] Describes the table where the query results should be stored. If not present, a new table will be created to store the results. This property must be set for large results that exceed the maximum response size. Defaults to: `null`.
  - flattenResults (boolean()): [Optional] If true and query uses legacy SQL dialect, flattens all nested and repeated fields in the query results. allowLargeResults must be true if this is set to false. For standard SQL queries, this flag is ignored and results are never flattened. Defaults to: `null`.
  - maximumBillingTier (integer()): [Optional] Limits the billing tier for this job. Queries that have resource usage beyond this tier will fail (without incurring a charge). If unspecified, this will be set to your project default. Defaults to: `1`.
  - maximumBytesBilled (String.t): [Optional] Limits the bytes billed for this job. Queries that will have bytes billed beyond this limit will fail (without incurring a charge). If unspecified, this will be set to your project default. Defaults to: `null`.
  - parameterMode (String.t): Standard SQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named (@myparam) query parameters in this query. Defaults to: `null`.
  - preserveNulls (boolean()): [Deprecated] This property is deprecated. Defaults to: `null`.
  - priority (String.t): [Optional] Specifies a priority for the query. Possible values include INTERACTIVE and BATCH. The default value is INTERACTIVE. Defaults to: `null`.
  - query (String.t): [Required] SQL query text to execute. The useLegacySql field can be used to indicate whether the query uses legacy SQL or standard SQL. Defaults to: `null`.
  - queryParameters ([QueryParameter]): Query parameters for standard SQL queries. Defaults to: `null`.
  - rangePartitioning (RangePartitioning): [Experimental] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified. Defaults to: `null`.
  - schemaUpdateOptions ([String.t]): Allows the schema of the destination table to be updated as a side effect of the query job. Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND; when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified: ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema. ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable. Defaults to: `null`.
  - tableDefinitions (%{optional(String.t) &#x3D;&gt; ExternalDataConfiguration}): [Optional] If querying an external data source outside of BigQuery, describes the data format, location and other properties of the data source. By defining these properties, the data source can then be queried as if it were a standard BigQuery table. Defaults to: `null`.
  - timePartitioning (TimePartitioning): Time-based partitioning specification for the destination table. Only one of timePartitioning and rangePartitioning should be specified. Defaults to: `null`.
  - useLegacySql (boolean()): Specifies whether to use BigQuery&#39;s legacy SQL dialect for this query. The default value is true. If set to false, the query will use BigQuery&#39;s standard SQL: https://cloud.google.com/bigquery/sql-reference/ When useLegacySql is set to false, the value of flattenResults is ignored; query will be run as if flattenResults is false. Defaults to: `null`.
  - useQueryCache (boolean()): [Optional] Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever tables in the query are modified. Moreover, the query cache is only available when a query does not have a destination table specified. The default value is true. Defaults to: `null`.
  - userDefinedFunctionResources ([UserDefinedFunctionResource]): Describes user-defined function resources used in the query. Defaults to: `null`.
  - writeDisposition (String.t): [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a &#39;duplicate&#39; error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowLargeResults => any(),
          :clustering => GoogleApi.BigQuery.V2.Model.Clustering.t(),
          :createDisposition => any(),
          :defaultDataset => GoogleApi.BigQuery.V2.Model.DatasetReference.t(),
          :destinationEncryptionConfiguration =>
            GoogleApi.BigQuery.V2.Model.EncryptionConfiguration.t(),
          :destinationTable => GoogleApi.BigQuery.V2.Model.TableReference.t(),
          :flattenResults => any(),
          :maximumBillingTier => any(),
          :maximumBytesBilled => any(),
          :parameterMode => any(),
          :preserveNulls => any(),
          :priority => any(),
          :query => any(),
          :queryParameters => list(GoogleApi.BigQuery.V2.Model.QueryParameter.t()),
          :rangePartitioning => GoogleApi.BigQuery.V2.Model.RangePartitioning.t(),
          :schemaUpdateOptions => list(any()),
          :tableDefinitions => map(),
          :timePartitioning => GoogleApi.BigQuery.V2.Model.TimePartitioning.t(),
          :useLegacySql => any(),
          :useQueryCache => any(),
          :userDefinedFunctionResources =>
            list(GoogleApi.BigQuery.V2.Model.UserDefinedFunctionResource.t()),
          :writeDisposition => any()
        }

  field(:allowLargeResults)
  field(:clustering, as: GoogleApi.BigQuery.V2.Model.Clustering)
  field(:createDisposition)
  field(:defaultDataset, as: GoogleApi.BigQuery.V2.Model.DatasetReference)

  field(
    :destinationEncryptionConfiguration,
    as: GoogleApi.BigQuery.V2.Model.EncryptionConfiguration
  )

  field(:destinationTable, as: GoogleApi.BigQuery.V2.Model.TableReference)
  field(:flattenResults)
  field(:maximumBillingTier)
  field(:maximumBytesBilled)
  field(:parameterMode)
  field(:preserveNulls)
  field(:priority)
  field(:query)
  field(:queryParameters, as: GoogleApi.BigQuery.V2.Model.QueryParameter, type: :list)
  field(:rangePartitioning, as: GoogleApi.BigQuery.V2.Model.RangePartitioning)
  field(:schemaUpdateOptions, type: :list)
  field(:tableDefinitions, as: GoogleApi.BigQuery.V2.Model.ExternalDataConfiguration, type: :map)
  field(:timePartitioning, as: GoogleApi.BigQuery.V2.Model.TimePartitioning)
  field(:useLegacySql)
  field(:useQueryCache)

  field(
    :userDefinedFunctionResources,
    as: GoogleApi.BigQuery.V2.Model.UserDefinedFunctionResource,
    type: :list
  )

  field(:writeDisposition)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.JobConfigurationQuery do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.JobConfigurationQuery.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.JobConfigurationQuery do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
