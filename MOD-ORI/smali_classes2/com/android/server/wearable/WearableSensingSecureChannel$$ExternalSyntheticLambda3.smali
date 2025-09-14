.class public final synthetic Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wearable/WearableSensingSecureChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 2
    .line 3
    const-string v0, "WearableSensingSecureChannel"

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    filled-new-array {v1}, [I

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/16 v2, 0x2000

    .line 16
    .line 17
    new-array v2, v2, [B

    .line 18
    .line 19
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalIn:Ljava/io/InputStream;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, -0x1

    .line 26
    if-eq v3, v4, :cond_0

    .line 27
    .line 28
    new-array v4, v3, [B

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    const-string v3, "Sending message to wearable"

    .line 35
    .line 36
    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    .line 40
    .line 41
    const v5, 0x43847987

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v5, v4, v1}, Landroid/companion/CompanionDeviceManager;->sendMessage(I[B[I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string v1, "Reached EOF when reading from remote stream. Reporting this as an error."

    .line 49
    .line 50
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onError()V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_0
    const-string v1, "IOException while reading from remote stream."

    .line 58
    .line 59
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onError()V

    .line 63
    .line 64
    .line 65
    :goto_1
    return-void
.end method
