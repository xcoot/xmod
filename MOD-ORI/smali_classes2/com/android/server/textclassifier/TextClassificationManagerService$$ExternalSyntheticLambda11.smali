.class public final synthetic Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/service/textclassifier/ITextClassifierCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda11;->f$0:Landroid/service/textclassifier/ITextClassifierCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda11;->f$0:Landroid/service/textclassifier/ITextClassifierCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
