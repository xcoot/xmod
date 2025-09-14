.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClampers:Ljava/util/List;

    .line 4
    .line 5
    new-instance p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p1, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 9
    .line 10
    .line 11
    check-cast p0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
