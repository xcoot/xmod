.class public final Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;
.super Lcom/android/server/am/PersistentConnection;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConstants:Lcom/android/server/appbinding/AppBindingConstants;

.field public final mFinder:Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/appbinding/AppBindingConstants;Landroid/os/Handler;Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;Landroid/content/ComponentName;)V
    .locals 16

    .line 1
    move-object/from16 v14, p0

    .line 3
    move-object/from16 v15, p3

    .line 5
    iget-wide v6, v15, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_SEC:J

    .line 7
    const-string v1, "AppBindingService"

    .line 9
    iget-wide v8, v15, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_INCREASE:D

    .line 11
    iget-wide v10, v15, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    .line 13
    iget-wide v12, v15, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    .line 15
    move-object/from16 v0, p0

    .line 17
    move-object/from16 v2, p1

    .line 19
    move-object/from16 v3, p4

    .line 21
    move/from16 v4, p2

    .line 23
    move-object/from16 v5, p6

    .line 25
    invoke-direct/range {v0 .. v13}, Lcom/android/server/am/PersistentConnection;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ILandroid/content/ComponentName;JDJJ)V

    .line 28
    move-object/from16 v0, p5

    .line 30
    iput-object v0, v14, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    .line 32
    iput-object v15, v14, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    .line 34
    return-void
.end method


# virtual methods
.method public final asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {p1}, Landroid/service/carrier/ICarrierMessagingClientService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingClientService;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final getBindFlags()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    .line 8
    iget p0, p0, Lcom/android/server/appbinding/AppBindingConstants;->SMS_APP_BIND_FLAGS:I

    .line 10
    return p0
.end method
