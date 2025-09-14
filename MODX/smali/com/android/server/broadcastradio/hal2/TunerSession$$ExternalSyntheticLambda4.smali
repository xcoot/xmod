.class public final synthetic Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/radio/RadioManager$BandConfig;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda4;->f$0:Landroid/hardware/radio/RadioManager$BandConfig;

    .line 6
    return-void
.end method


# virtual methods
.method public final run(Landroid/hardware/radio/ITunerCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda4;->f$0:Landroid/hardware/radio/RadioManager$BandConfig;

    .line 3
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 6
    return-void
.end method
