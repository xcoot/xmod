.class public final Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;
.super Landroid/app/wearable/IWearableSensingCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$callbackFromAppProcess:Landroid/app/wearable/IWearableSensingCallback;


# direct methods
.method public constructor <init>(Landroid/app/wearable/IWearableSensingCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;->val$callbackFromAppProcess:Landroid/app/wearable/IWearableSensingCallback;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/wearable/IWearableSensingCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final openFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-direct {v1, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;->val$callbackFromAppProcess:Landroid/app/wearable/IWearableSensingCallback;

    .line 16
    .line 17
    invoke-interface {p0, p1, p2}, Landroid/app/wearable/IWearableSensingCallback;->openFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
