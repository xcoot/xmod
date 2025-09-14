.class public final Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$callback:Landroid/location/provider/IGeocodeCallback;

.field public final synthetic val$request:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/location/provider/ForwardGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$request:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$callback:Landroid/location/provider/IGeocodeCallback;

    return-void
.end method

.method public constructor <init>(Landroid/location/provider/ReverseGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$request:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$callback:Landroid/location/provider/IGeocodeCallback;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$callback:Landroid/location/provider/IGeocodeCallback;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p0, p1}, Landroid/location/provider/IGeocodeCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    return-void

    .line 16
    :pswitch_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$callback:Landroid/location/provider/IGeocodeCallback;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p0, p1}, Landroid/location/provider/IGeocodeCallback;->onError(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    .line 24
    .line 25
    :catch_1
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/location/provider/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IGeocodeProvider;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$request:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/location/provider/ForwardGeocodeRequest;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$callback:Landroid/location/provider/IGeocodeCallback;

    .line 15
    .line 16
    invoke-interface {p1, v0, p0}, Landroid/location/provider/IGeocodeProvider;->forwardGeocode(Landroid/location/provider/ForwardGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    invoke-static {p1}, Landroid/location/provider/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IGeocodeProvider;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$request:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Landroid/location/provider/ReverseGeocodeRequest;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$callback:Landroid/location/provider/IGeocodeCallback;

    .line 29
    .line 30
    invoke-interface {p1, v0, p0}, Landroid/location/provider/IGeocodeProvider;->reverseGeocode(Landroid/location/provider/ReverseGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
