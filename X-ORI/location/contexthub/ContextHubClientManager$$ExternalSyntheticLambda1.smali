.class public final synthetic Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;->f$0:J

    .line 5
    .line 6
    iput p3, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-wide v6, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;->f$0:J

    .line 2
    .line 3
    iget v4, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, v4, v0, v6, v7}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;-><init>(IIJ)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)B

    .line 17
    .line 18
    .line 19
    new-instance p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    move-wide v2, v6

    .line 25
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JII)V

    .line 26
    .line 27
    .line 28
    monitor-enter p1

    .line 29
    const/4 v0, 0x0

    .line 30
    :try_start_0
    invoke-virtual {p1, p0, v6, v7, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;JLcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit p1

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit p1

    .line 37
    throw p0
.end method
