.class public final Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

.field public final synthetic val$callerIdentity:Landroid/location/util/identity/CallerIdentity;

.field public final synthetic val$listener:Landroid/os/IInterface;

.field public final synthetic val$request:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    .line 6
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;->val$listener:Landroid/os/IInterface;

    .line 8
    iput-object p4, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;->val$request:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;->val$callerIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    .line 3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;->val$listener:Landroid/os/IInterface;

    .line 5
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    .line 11
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;->val$request:Ljava/lang/Object;

    .line 13
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;->val$callerIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 15
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;->val$listener:Landroid/os/IInterface;

    .line 17
    invoke-virtual {v2, v3, v4, p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->createRegistration(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    .line 24
    return-void
.end method
