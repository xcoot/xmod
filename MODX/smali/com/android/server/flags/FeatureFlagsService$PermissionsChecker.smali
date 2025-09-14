.class public Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public assertSyncPermission()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->mContext:Landroid/content/Context;

    .line 3
    const-string v0, "android.permission.SYNC_FLAGS"

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 14
    const-string v0, "Non-core flag queried. Requires SYNC_FLAGS permission!"

    .line 16
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
.end method

.method public assertWritePermission()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->mContext:Landroid/content/Context;

    .line 3
    const-string v0, "android.permission.WRITE_FLAGS"

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 14
    const-string v0, "Requires WRITE_FLAGS permission!"

    .line 16
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
.end method
