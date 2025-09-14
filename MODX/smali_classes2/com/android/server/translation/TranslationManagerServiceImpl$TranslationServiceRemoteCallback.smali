.class public final Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;
.super Landroid/view/translation/ITranslationServiceCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/translation/TranslationManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/translation/TranslationManagerServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;->this$0:Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/translation/ITranslationServiceCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final updateTranslationCapability(Landroid/view/translation/TranslationCapability;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "TranslationManagerServiceImpl"

    .line 4
    .line 5
    const-string/jumbo p1, "received a null TranslationCapability from TranslationService."

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;->this$0:Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v1, "translation_capabilities"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    .line 29
    .line 30
    new-instance p1, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    invoke-direct {p1, v0}, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
