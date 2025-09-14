.class public final Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;
.super Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBrReceiver:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;

.field public mCurrentUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V

    .line 2
    .line 3
    .line 4
    new-instance v1, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;

    .line 5
    .line 6
    invoke-direct {v1, p0}, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;-><init>(Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;)V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mBrReceiver:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;

    .line 10
    .line 11
    const-string p0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 12
    .line 13
    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    sget-object v2, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x2

    .line 22
    move-object v0, p1

    .line 23
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final cancelDownload(Ljava/lang/String;I)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final clearLocalClip(I)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mBrReceiver:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final registerContinuityCopyListener(Lcom/samsung/android/continuity/ISemContinuitySimpleListener;I)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final requestDownload(Ljava/lang/String;Lcom/samsung/android/continuity/ISemContinuitySimpleListener;I)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final setCurrentUserHandle(Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 2
    .line 3
    return-void
.end method

.method public final setLocalClip(Landroid/os/Bundle;I)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final unregisterContinuityCopyListener(I)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method
