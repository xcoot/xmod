.class public final Lcom/android/server/trust/TrustManagerService$1$1;
.super Landroid/hardware/location/ISignificantPlaceProviderManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/trust/TrustManagerService$1;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$1$1;->this$1:Lcom/android/server/trust/TrustManagerService$1;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/location/ISignificantPlaceProviderManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final setInSignificantPlace(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1$1;->this$1:Lcom/android/server/trust/TrustManagerService$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/server/trust/TrustManagerService;->mIsInSignificantPlace:Z

    .line 6
    .line 7
    return-void
.end method
