.class public final Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final dataset:Landroid/service/autofill/Dataset;

.field public final filter:Ljava/util/regex/Pattern;

.field public final filterable:Z

.field public final value:Ljava/lang/String;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/service/autofill/Dataset;Ljava/util/regex/Pattern;ZLjava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    .line 6
    iput-object p4, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->value:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->view:Landroid/view/View;

    .line 10
    iput-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->filter:Ljava/util/regex/Pattern;

    .line 12
    iput-boolean p3, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->filterable:Z

    .line 14
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "ViewItem:[view="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->view:Landroid/view/View;

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    .line 19
    if-nez v1, :cond_0

    .line 21
    const/4 v1, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    :goto_0
    if-eqz v1, :cond_1

    .line 29
    const-string v2, ", dataset="

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_1
    const-string v1, "_chars"

    .line 39
    iget-object v2, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->value:Ljava/lang/String;

    .line 41
    if-eqz v2, :cond_2

    .line 43
    const-string v3, ", value="

    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 51
    move-result v2

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->filterable:Z

    .line 60
    if-eqz v2, :cond_3

    .line 62
    const-string v2, ", filterable"

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_3
    iget-object v2, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->filter:Ljava/util/regex/Pattern;

    .line 69
    if-eqz v2, :cond_4

    .line 71
    const-string v2, ", filter="

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->filter:Ljava/util/regex/Pattern;

    .line 78
    invoke-virtual {p0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 85
    move-result p0

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_4
    const/16 p0, 0x5d

    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 101
    return-object p0
.end method
