.class public final synthetic Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda0;->f$0:I

    .line 6
    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda0;->f$0:I

    .line 3
    check-cast p1, Landroid/location/IGnssStatusListener;

    .line 5
    invoke-interface {p1, p0}, Landroid/location/IGnssStatusListener;->onFirstFix(I)V

    .line 8
    return-void
.end method
