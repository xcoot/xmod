.class public final synthetic Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


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
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    check-cast p2, [B

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "WearableSensingSecureChannel"

    .line 18
    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    const-string p1, "Received message from wearable."

    .line 22
    .line 23
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :try_start_0
    iget-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalOut:Ljava/io/OutputStream;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalOut:Ljava/io/OutputStream;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    const-string p1, "IOException when writing to remote stream. Closing the secure channel."

    .line 38
    .line 39
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onError()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string p0, "Received CDM message of type MESSAGE_ONEWAY_FROM_WEARABLE, but it is for another association. Ignoring the message."

    .line 47
    .line 48
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method
