.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/LocationProviderManager$Registration;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/LocationProviderManager$Registration;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 6
    iput p2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 3
    iget p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda1;

    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda1;-><init>(I)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    .line 16
    return-void
.end method
