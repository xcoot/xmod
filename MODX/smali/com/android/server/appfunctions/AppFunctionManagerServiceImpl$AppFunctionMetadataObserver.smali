.class public final Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/appsearch/observer/ObserverCallback;


# instance fields
.field public final mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/content/Context;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1, p2, p3}, Lcom/android/server/appfunctions/MetadataSyncPerUser;->getPerUserMetadataSyncAdapter(Landroid/os/UserHandle;Landroid/content/Context;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)Lcom/android/server/appfunctions/MetadataSyncAdapter;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    .line 10
    return-void
.end method


# virtual methods
.method public final onDocumentChanged(Landroid/app/appsearch/observer/DocumentChangeInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/app/appsearch/observer/DocumentChangeInfo;->getDatabaseName()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "apps-db"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p1}, Landroid/app/appsearch/observer/DocumentChangeInfo;->getNamespace()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    const-string v0, "app_functions"

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 30
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->submitSyncRequest(Z)Lcom/android/internal/infra/AndroidFuture;

    .line 36
    :cond_1
    return-void
.end method

.method public final onSchemaChanged(Landroid/app/appsearch/observer/SchemaChangeInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/app/appsearch/observer/SchemaChangeInfo;->getDatabaseName()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "apps-db"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {p1}, Landroid/app/appsearch/observer/SchemaChangeInfo;->getChangedSchemaNames()Ljava/util/Set;

    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p1

    .line 26
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/String;

    .line 38
    const-string v1, "AppFunctionStaticMetadata"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 46
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    .line 48
    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->submitSyncRequest(Z)Lcom/android/internal/infra/AndroidFuture;

    .line 52
    :cond_2
    return-void
.end method
