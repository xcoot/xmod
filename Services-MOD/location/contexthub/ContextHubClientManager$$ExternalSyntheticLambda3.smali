.class public final synthetic Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;->f$0:J

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;->f$0:J

    .line 8
    check-cast p1, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 10
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->checkNanoappPermsAsync()V

    .line 13
    new-instance p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda11;

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda11;-><init>(JI)V

    .line 19
    invoke-virtual {p1, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)B

    .line 22
    new-instance p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda12;

    .line 24
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JI)V

    .line 27
    monitor-enter p1

    .line 28
    const/4 v2, 0x0

    .line 29
    :try_start_0
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;JLcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p1

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit p1

    .line 36
    throw p0

    .line 37
    :pswitch_0
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;->f$0:J

    .line 39
    check-cast p1, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    new-instance p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda11;

    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda11;-><init>(JI)V

    .line 50
    invoke-virtual {p1, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)B

    .line 53
    new-instance p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda12;

    .line 55
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JI)V

    .line 58
    monitor-enter p1

    .line 59
    const/4 v2, 0x0

    .line 60
    :try_start_1
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;JLcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;)B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    monitor-exit p1

    .line 64
    return-void

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    monitor-exit p1

    .line 67
    throw p0

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
