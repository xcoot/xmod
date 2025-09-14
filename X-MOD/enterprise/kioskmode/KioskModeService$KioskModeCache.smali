.class public final Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBlockedHwKeys:Ljava/util/Map;

.field public final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;

    .line 9
    return-void
.end method


# virtual methods
.method public final updateCache()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 10
    invoke-virtual {v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getAllBlockedList()Ljava/util/Map;

    .line 13
    move-result-object v2

    .line 14
    iput-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    new-instance p0, Landroid/content/Intent;

    .line 20
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

    .line 22
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    const/high16 v0, 0x4000000

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 33
    move-result-wide v2

    .line 34
    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 36
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 38
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :catch_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    throw p0

    .line 50
    :cond_1
    :goto_1
    return-void
.end method
