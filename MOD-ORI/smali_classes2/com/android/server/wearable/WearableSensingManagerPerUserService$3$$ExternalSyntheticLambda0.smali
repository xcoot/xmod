.class public final synthetic Lcom/android/server/wearable/WearableSensingManagerPerUserService$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/infra/AndroidFuture;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/infra/AndroidFuture;

    .line 4
    .line 5
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 6
    .line 7
    check-cast p2, Ljava/lang/Throwable;

    .line 8
    .line 9
    const-string v1, "WearableSensingManagerPerUserService"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "Error when reading file "

    .line 17
    .line 18
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v1, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    if-nez p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->isReadOnly(Landroid/os/ParcelFileDescriptor;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string p1, "Received writable ParcelFileDescriptor from app process. To prevent arbitrary data egress, sending null to WearableSensingService instead."

    .line 52
    .line 53
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method
