.class public final synthetic Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/android/server/clipboard/ClipboardService$Clipboard;

.field public final synthetic f$2:Landroid/view/textclassifier/TextClassifier;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/view/textclassifier/TextClassifier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;->f$2:Landroid/view/textclassifier/TextClassifier;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;->f$2:Landroid/view/textclassifier/TextClassifier;

    .line 6
    .line 7
    new-instance v2, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    .line 8
    .line 9
    const/16 v3, 0x16

    .line 10
    .line 11
    invoke-direct {v2, v3}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Landroid/view/textclassifier/TextClassificationContext$Builder;

    .line 15
    .line 16
    const-string/jumbo v4, "clipboard"

    .line 17
    .line 18
    .line 19
    invoke-direct {v3, v0, v4}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v2, v0}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->setEventContext(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    .line 31
    .line 32
    const-string/jumbo v2, "source_package"

    .line 33
    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mPrimaryClipPackage:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v2, v1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->build()Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {p0, v0}, Landroid/view/textclassifier/TextClassifier;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
