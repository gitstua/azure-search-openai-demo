
## Infra
```bash
azd provision
Checking if authentication should be setup...
AZURE_USE_AUTHENTICATION is not set, skipping authentication setup.

Provisioning Azure resources (azd provision)
Provisioning Azure resources can take some time.

? Select an Azure Subscription to use:  5. VS ENT Apr2025 (27452aad-68f9-45c8-ae05-58f1aa2bf436)
? Enter a value for the 'documentIntelligenceResourceGroupLocation' infrastructure parameter:  2. (US) East US (eastus)
? Enter a value for the 'location' infrastructure parameter:  5. (Asia Pacific) Australia East (australiaeast)
? Enter a value for the 'openAiLocation' infrastructure parameter:  2. (Asia Pacific) Australia East (australiaeast)
Subscription: VS ENT Apr2025 (27452aad-68f9-45c8-ae05-58f1aa2bf436)
Location: Australia East

  You can view detailed progress in the Azure Portal:
  https://portal.azure.com/#view/HubsExtension/DeploymentDetailsBlade/~/overview/id/%2Fsubscriptions%2F27452aad-68f9-45c8-ae05-58f1aa2bf436%2Fproviders%2FMicrosoft.Resources%2Fdeployments%2Faidemo-1752283990

  (✓) Done: Resource group: rg-aidemo (1.501s)
  (✓) Done: Log Analytics workspace: log-q4tothmf7s3iw (16.312s)
  (✓) Done: Application Insights: appi-q4tothmf7s3iw (3.645s)
  (✓) Done: Portal dashboard: dash-q4tothmf7s3iw (556ms)
  (✓) Done: Azure OpenAI: cog-q4tothmf7s3iw (1m42.394s)
  (✓) Done: Azure AI Services Model Deployment: cog-q4tothmf7s3iw/gpt-4.1-mini (1.557s)
  (✓) Done: Azure AI Services Model Deployment: cog-q4tothmf7s3iw/text-embedding-3-large (3.104s)
  (✓) Done: Storage account: stq4tothmf7s3iw (1m52.251s)
  (✓) Done: Container Registry: aidemoacrq4tothmf7s3iw (1m29.74s)
  (✓) Done: Document Intelligence: cog-di-q4tothmf7s3iw (2m2.134s)
  (✓) Done: Container Apps Environment: aidemo-aca-env (1m54.624s)
  (✓) Done: Search service: gptkb-q4tothmf7s3iw (6m10.37s)
  (✓) Done: Container App: capps-backend-q4tothmf7s3iw (24.675s)
Creating Python virtual environment "app/backend/.venv"...
Installing dependencies from "requirements.txt" into virtual environment (in quiet mode)...
Running "prepdocs.py"
[11:43:16] INFO     Loading azd env from                                                             load_azd_env.py:28
                    /Users/stu/code/azure-search-openai-demo/.azure/aidemo/.env, which may override
                    existing environment variables
           INFO     Connecting to Azure services using the azd credential for tenant                    prepdocs.py:339
                    9e1c4e36-4f81-4b67-b7cd-ed19cb8c61b5
           INFO     Using local files: ./data/*                                                         prepdocs.py:121
           INFO     Checking whether search index gptkbindex exists...                              searchmanager.py:80
[11:43:18] INFO     Creating new search index gptkbindex                                           searchmanager.py:171
           INFO     Including embedding3 field for text vectors in new index                       searchmanager.py:236
[11:43:20] INFO     Ingesting 'Financial Market Analysis Report 2023.pdf'                            filestrategy.py:28
           INFO     Extracting text from './data/GPT4V_Examples/Financial Market Analysis Report        pdfparser.py:68
                    2023.pdf' using Azure Document Intelligence
[11:43:27] INFO     Splitting 'Financial Market Analysis Report 2023.pdf' into sections              filestrategy.py:30
[11:43:28] INFO     Uploading blob for whole file -> Financial Market Analysis Report 2023.pdf        blobmanager.py:59
[11:43:29] INFO     Computed embeddings in batch. Batch size: 6, Token count: 1696                    embeddings.py:117
[11:43:30] INFO     Ingesting 'Northwind_Standard_Benefits_Details.pdf'                              filestrategy.py:28
           INFO     Extracting text from './data/Northwind_Standard_Benefits_Details.pdf' using Azure   pdfparser.py:68
                    Document Intelligence
[11:44:01] INFO     Splitting 'Northwind_Standard_Benefits_Details.pdf' into sections                filestrategy.py:30
[11:44:02] INFO     Uploading blob for whole file -> Northwind_Standard_Benefits_Details.pdf          blobmanager.py:59
[11:44:03] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3477                   embeddings.py:117
           INFO     Computed embeddings in batch. Batch size: 16, Token count: 3528                   embeddings.py:117
[11:44:04] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3473                   embeddings.py:117
           INFO     Computed embeddings in batch. Batch size: 16, Token count: 3339                   embeddings.py:117
[11:44:05] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3530                   embeddings.py:117
           INFO     Computed embeddings in batch. Batch size: 16, Token count: 3219                   embeddings.py:117
[11:45:04] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3425                   embeddings.py:117
           INFO     Computed embeddings in batch. Batch size: 16, Token count: 3323                   embeddings.py:117
[11:45:05] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3362                   embeddings.py:117
           INFO     Computed embeddings in batch. Batch size: 16, Token count: 3278                   embeddings.py:117
[11:45:06] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3208                   embeddings.py:117
           INFO     Computed embeddings in batch. Batch size: 16, Token count: 3391                   embeddings.py:117
[11:46:05] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3504                   embeddings.py:117
           INFO     Computed embeddings in batch. Batch size: 16, Token count: 3414                   embeddings.py:117
[11:46:06] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3289                   embeddings.py:117
           INFO     Computed embeddings in batch. Batch size: 16, Token count: 3396                   embeddings.py:117
           INFO     Computed embeddings in batch. Batch size: 2, Token count: 360                     embeddings.py:117
[11:46:14] INFO     Ingesting 'PerksPlus.pdf'                                                        filestrategy.py:28
           INFO     Extracting text from './data/PerksPlus.pdf' using Azure Document Intelligence       pdfparser.py:68
[11:46:19] INFO     Splitting 'PerksPlus.pdf' into sections                                          filestrategy.py:30
           INFO     Uploading blob for whole file -> PerksPlus.pdf                                    blobmanager.py:59
[11:46:20] INFO     Computed embeddings in batch. Batch size: 3, Token count: 622                     embeddings.py:117
           INFO     Ingesting 'Northwind_Health_Plus_Benefits_Details.pdf'                           filestrategy.py:28
           INFO     Extracting text from './data/Northwind_Health_Plus_Benefits_Details.pdf' using      pdfparser.py:68
                    Azure Document Intelligence
[11:46:52] INFO     Splitting 'Northwind_Health_Plus_Benefits_Details.pdf' into sections             filestrategy.py:30
[11:46:53] INFO     Uploading blob for whole file -> Northwind_Health_Plus_Benefits_Details.pdf       blobmanager.py:59
           INFO     Computed embeddings in batch. Batch size: 16, Token count: 3436                   embeddings.py:117
[11:46:58] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3518                   embeddings.py:117
[11:47:05] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3406                   embeddings.py:117
[11:47:06] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3403                   embeddings.py:117
           INFO     Computed embeddings in batch. Batch size: 16, Token count: 3516                   embeddings.py:117
[11:47:07] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3338                   embeddings.py:117
[11:47:55] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3406                   embeddings.py:117
[11:47:58] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3231                   embeddings.py:117
[11:48:06] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3344                   embeddings.py:117
           INFO     Computed embeddings in batch. Batch size: 16, Token count: 3230                   embeddings.py:117
[11:48:07] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3153                   embeddings.py:117
           INFO     Computed embeddings in batch. Batch size: 16, Token count: 3407                   embeddings.py:117
[11:48:55] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3555                   embeddings.py:117
[11:48:59] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3381                   embeddings.py:117
[11:49:07] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3306                   embeddings.py:117
           INFO     Computed embeddings in batch. Batch size: 16, Token count: 3376                   embeddings.py:117
[11:49:08] INFO     Computed embeddings in batch. Batch size: 8, Token count: 1512                    embeddings.py:117
[11:49:14] INFO     Ingesting 'role_library.pdf'                                                     filestrategy.py:28
           INFO     Extracting text from './data/role_library.pdf' using Azure Document Intelligence    pdfparser.py:68
[11:49:28] INFO     Splitting 'role_library.pdf' into sections                                       filestrategy.py:30
[11:49:29] INFO     Uploading blob for whole file -> role_library.pdf                                 blobmanager.py:59
[11:49:30] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3254                   embeddings.py:117
           INFO     Computed embeddings in batch. Batch size: 16, Token count: 3153                   embeddings.py:117
[11:49:56] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3204                   embeddings.py:117
[11:49:59] INFO     Computed embeddings in batch. Batch size: 10, Token count: 1949                   embeddings.py:117
[11:50:01] INFO     Ingesting 'Benefit_Options.pdf'                                                  filestrategy.py:28
           INFO     Extracting text from './data/Benefit_Options.pdf' using Azure Document Intelligence pdfparser.py:68
[11:50:08] INFO     Splitting 'Benefit_Options.pdf' into sections                                    filestrategy.py:30
           INFO     Uploading blob for whole file -> Benefit_Options.pdf                              blobmanager.py:59
[11:50:09] INFO     Computed embeddings in batch. Batch size: 5, Token count: 1033                    embeddings.py:117
           INFO     Ingesting 'employee_handbook.pdf'                                                filestrategy.py:28
           INFO     Extracting text from './data/employee_handbook.pdf' using Azure Document            pdfparser.py:68
                    Intelligence
[11:50:17] INFO     Splitting 'employee_handbook.pdf' into sections                                  filestrategy.py:30
           INFO     Uploading blob for whole file -> employee_handbook.pdf                            blobmanager.py:59
[11:50:18] INFO     Computed embeddings in batch. Batch size: 16, Token count: 3166                   embeddings.py:117
           INFO     Computed embeddings in batch. Batch size: 1, Token count: 65                      embeddings.py:117
[11:50:19] INFO     Ingesting '2192.json'                                                            filestrategy.py:28
           INFO     Splitting '2192.json' into sections                                              filestrategy.py:30
           INFO     Uploading blob for whole file -> 2192.json                                        blobmanager.py:59
[11:50:20] INFO     Computed embeddings in batch. Batch size: 2, Token count: 375                     embeddings.py:117
           INFO     Ingesting '2189.json'                                                            filestrategy.py:28
           INFO     Splitting '2189.json' into sections                                              filestrategy.py:30
           INFO     Uploading blob for whole file -> 2189.json                                        blobmanager.py:59
[11:50:21] INFO     Computed embeddings in batch. Batch size: 1, Token count: 205                     embeddings.py:117
           INFO     Ingesting 'query.json'                                                           filestrategy.py:28
           INFO     Splitting 'query.json' into sections                                             filestrategy.py:30
[11:50:22] INFO     Uploading blob for whole file -> query.json                                       blobmanager.py:59
           INFO     Computed embeddings in batch. Batch size: 7, Token count: 2199                    embeddings.py:117
[11:50:23] INFO     Ingesting '2190.json'                                                            filestrategy.py:28
           INFO     Splitting '2190.json' into sections                                              filestrategy.py:30
           INFO     Uploading blob for whole file -> 2190.json                                        blobmanager.py:59
           INFO     Computed embeddings in batch. Batch size: 2, Token count: 303                     embeddings.py:117
[11:50:24] INFO     Ingesting '2191.json'                                                            filestrategy.py:28
           INFO     Splitting '2191.json' into sections                                              filestrategy.py:30
           INFO     Uploading blob for whole file -> 2191.json                                        blobmanager.py:59
[11:50:25] INFO     Computed embeddings in batch. Batch size: 2, Token count: 418                     embeddings.py:117
           INFO     Ingesting 'Contoso_Electronics_Company_Overview.md'                              filestrategy.py:28
           INFO     Splitting 'Contoso_Electronics_Company_Overview.md' into sections                filestrategy.py:30
           INFO     Uploading blob for whole file -> Contoso_Electronics_Company_Overview.md          blobmanager.py:59
[11:50:26] INFO     Computed embeddings in batch. Batch size: 3, Token count: 521                     embeddings.py:117

SUCCESS: Your application was provisioned in Azure in 9 minutes 25 seconds.
You can view the resources created under the resource group rg-aidemo in Azure Portal:
https://portal.azure.com/#@/resource/subscriptions/27452aad-68f9-45c8-ae05-58f1aa2bf436/resourceGroups/rg-aidemo/overview
```

Settings are in [.azure/aidemo/.env](../.azure/aidemo/.env)


## App
```bash
~/code/azure-search-openai-demo on  main [?] ➜ azd deploy

Deploying services (azd deploy)

  Deploying service backend (Running remote build)

  ────────── Docker Output ────────────────────────────────────────────────────────────────────────────────────────────

  Downloading MarkupSafe-2.1.5-cp311-cp311-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (28 kB)
  Downloading mdurl-0.1.2-py3-none-any.whl (10.0 kB)
  Downloading microsoft_kiota_abstractions-1.9.3-py3-none-any.whl (44 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  ━━ 44.4/44.4 kB 7.3 MB/s eta 0:00:00
  Downloading microsoft_kiota_authentication_azure-1.9.3-py3-none-any.whl (6.9 kB)
  Downloading microsoft_kiota_http-1.9.3-py3-none-any.whl (31 kB)
  Downloading microsoft_kiota_serialization_form-1.9.3-py3-none-any.whl (10 kB)
```





