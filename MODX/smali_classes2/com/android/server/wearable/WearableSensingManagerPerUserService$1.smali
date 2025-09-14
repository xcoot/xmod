.class public final Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

.field public final synthetic val$currentSecureChannelRef:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic val$statusCallback:Landroid/os/RemoteCallback;

.field public final synthetic val$wrappedWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;Landroid/os/RemoteCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$wrappedWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$statusCallback:Landroid/os/RemoteCallback;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$currentSecureChannelRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    return-void
.end method
