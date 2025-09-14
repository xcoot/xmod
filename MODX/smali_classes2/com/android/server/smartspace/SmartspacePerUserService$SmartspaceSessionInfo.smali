.class public final Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

.field public final mSmartspaceConfig:Landroid/app/smartspace/SmartspaceConfig;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceConfig;Landroid/os/IBinder;Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSmartspaceConfig:Landroid/app/smartspace/SmartspaceConfig;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mToken:Landroid/os/IBinder;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 18
    .line 19
    return-void
.end method
