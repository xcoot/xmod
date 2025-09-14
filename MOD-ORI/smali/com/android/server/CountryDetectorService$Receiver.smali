.class public final Lcom/android/server/CountryDetectorService$Receiver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mKey:Landroid/os/IBinder;

.field public final mListener:Landroid/location/ICountryListener;

.field public final synthetic this$0:Lcom/android/server/CountryDetectorService;


# direct methods
.method public constructor <init>(Lcom/android/server/CountryDetectorService;Landroid/location/ICountryListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/CountryDetectorService$Receiver;->this$0:Lcom/android/server/CountryDetectorService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/CountryDetectorService$Receiver;->mListener:Landroid/location/ICountryListener;

    .line 7
    .line 8
    invoke-interface {p2}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/CountryDetectorService$Receiver;->this$0:Lcom/android/server/CountryDetectorService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/CountryDetectorService;->removeListener(Landroid/os/IBinder;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/server/CountryDetectorService$Receiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/CountryDetectorService$Receiver;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/os/IBinder;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
