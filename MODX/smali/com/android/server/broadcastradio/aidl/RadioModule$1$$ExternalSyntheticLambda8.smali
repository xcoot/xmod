.class public final synthetic Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda8;->f$0:I

    .line 6
    iput-boolean p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda8;->f$1:Z

    .line 8
    return-void
.end method


# virtual methods
.method public final run(Landroid/hardware/radio/ITunerCallback;I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/radio/Flags;->hdRadioImproved()Z

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda8;->f$0:I

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const-wide/32 v2, 0x120927cf

    .line 12
    invoke-static {v2, v3, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_1

    .line 18
    :cond_0
    const/16 p2, 0xb

    .line 20
    if-eq v1, p2, :cond_2

    .line 22
    const/16 p2, 0xa

    .line 24
    if-eq v1, p2, :cond_2

    .line 26
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda8;->f$1:Z

    .line 28
    invoke-interface {p1, v1, p0}, Landroid/hardware/radio/ITunerCallback;->onConfigFlagUpdated(IZ)V

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const-string p0, "BcRadioAidlSrv.module"

    .line 34
    const-string/jumbo p1, "onConfigFlagUpdated: cannot send program info requiring higher target SDK version"

    .line 37
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_0
    return-void
.end method
