.class public final Lcom/android/server/SystemConfigService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInterface:Lcom/android/server/SystemConfigService$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/SystemConfigService$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/SystemConfigService$1;-><init>(Lcom/android/server/SystemConfigService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/SystemConfigService;->mInterface:Lcom/android/server/SystemConfigService$1;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/SystemConfigService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/SystemConfigService;->mInterface:Lcom/android/server/SystemConfigService$1;

    .line 2
    .line 3
    const-string/jumbo v1, "system_config"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
