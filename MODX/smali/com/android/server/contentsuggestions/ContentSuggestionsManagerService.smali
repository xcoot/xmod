.class public final Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;


# direct methods
.method public static -$$Nest$menforceCaller(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.permission.MANAGE_CONTENT_SUGGESTIONS"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 15
    invoke-virtual {v0, p1}, Lcom/android/server/infra/ServiceNameBaseResolver;->isTemporary(I)Z

    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_1

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 24
    move-result p1

    .line 25
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 27
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 29
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string p0, "Permission Denial: "

    .line 40
    const-string p1, " from pid="

    .line 42
    invoke-static {p0, p2, p1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    move-result-object p0

    .line 46
    const-string p1, ", uid="

    .line 48
    const-string p2, " expected caller is recents"

    .line 50
    const-string v0, "ContentSuggestionsManagerService"

    .line 52
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    new-instance p1, Ljava/lang/SecurityException;

    .line 58
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p1

    .line 62
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 3
    const v1, 0x1040311

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    .line 9
    const-string/jumbo v1, "no_content_suggestions"

    .line 12
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;Ljava/lang/String;)V

    .line 15
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 17
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 23
    iput-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 25
    return-void
.end method


# virtual methods
.method public final enforceCallingPermissionForManagement()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "android.permission.MANAGE_CONTENT_SUGGESTIONS"

    .line 7
    const-string v1, "ContentSuggestionsManagerService"

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public final getMaximumTemporaryServiceDurationMs()I
    .locals 0

    .line 1
    const p0, 0x1d4c0

    .line 4
    return p0
.end method

.method public final newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    .line 1
    new-instance p2, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    .line 3
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 5
    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 8
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 10
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 16
    return-object p2
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;-><init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)V

    .line 6
    const-string/jumbo v1, "content_suggestions"

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 12
    return-void
.end method
