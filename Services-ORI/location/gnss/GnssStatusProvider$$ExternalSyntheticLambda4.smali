.class public final synthetic Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic f$0:Landroid/location/GnssStatus;


# direct methods
.method public synthetic constructor <init>(Landroid/location/GnssStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda4;->f$0:Landroid/location/GnssStatus;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda4;->f$0:Landroid/location/GnssStatus;

    .line 2
    .line 3
    check-cast p1, Landroid/location/IGnssStatusListener;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Landroid/location/IGnssStatusListener;->onSvStatusChanged(Landroid/location/GnssStatus;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
