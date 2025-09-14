.class public final synthetic Lcom/android/server/broadcastradio/aidl/TunerSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;


# virtual methods
.method public final run(Landroid/hardware/radio/ITunerCallback;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanComplete()V

    .line 4
    return-void
.end method
