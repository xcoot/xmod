.class public final synthetic Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/autofill/ui/InlineContentProviderImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/InlineContentProviderImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const-string v0, "InlineContentProviderImpl"

    .line 17
    const-string/jumbo v1, "handleOnSurfacePackageReleased"

    .line 20
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mProvideContentCalled:Z

    .line 25
    if-eqz v0, :cond_2

    .line 27
    iget-object p0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 29
    if-nez p0, :cond_1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;I)V

    .line 38
    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    .line 40
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    :cond_2
    :goto_0
    return-void

    .line 44
    :pswitch_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 46
    if-eqz v0, :cond_3

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    const-string v0, "InlineContentProviderImpl"

    .line 53
    const-string/jumbo v1, "handleGetSurfacePackage"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mProvideContentCalled:Z

    .line 61
    if-eqz v0, :cond_5

    .line 63
    iget-object p0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 65
    if-nez p0, :cond_4

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    new-instance v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;

    .line 70
    const/4 v1, 0x0

    .line 71
    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;I)V

    .line 74
    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    .line 76
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :cond_5
    :goto_1
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
