.class public final synthetic Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssStatusProvider;

.field public final synthetic f$1:Landroid/location/GnssStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssStatusProvider;Landroid/location/GnssStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/GnssStatusProvider;

    .line 6
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;->f$1:Landroid/location/GnssStatus;

    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/GnssStatusProvider;

    .line 3
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;->f$1:Landroid/location/GnssStatus;

    .line 5
    check-cast p1, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object p1, p1, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 12
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssStatusProvider;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/injector/SystemAppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 21
    new-instance p1, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda4;

    .line 23
    invoke-direct {p1, p0}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda4;-><init>(Landroid/location/GnssStatus;)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return-object p1
.end method
