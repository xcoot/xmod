.class public final Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;
.super Landroid/os/IThermalEventListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/ExternalDisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ExternalDisplayPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/ExternalDisplayPolicy;

    .line 3
    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final notifyThrottling(Landroid/os/Temperature;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/ExternalDisplayPolicy;

    .line 7
    iget v0, v0, Lcom/android/server/display/ExternalDisplayPolicy;->mStatus:I

    .line 9
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/ExternalDisplayPolicy;

    .line 11
    iput p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mStatus:I

    .line 13
    return-void
.end method
