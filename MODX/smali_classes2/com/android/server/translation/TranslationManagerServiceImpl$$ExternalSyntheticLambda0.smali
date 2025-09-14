.class public final synthetic Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/translation/TranslationManagerServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/translation/TranslationManagerServiceImpl;ILandroid/os/Bundle;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    .line 8
    .line 9
    check-cast p1, Landroid/os/IRemoteCallback;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    check-cast p2, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-static {p2, v1, p1, v2, p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallback(IILandroid/os/IRemoteCallback;Landroid/os/Bundle;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
