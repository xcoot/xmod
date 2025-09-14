.class public final synthetic Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/CharSequence;

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/CharSequence;

    .line 3
    check-cast p1, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/autofill/ui/FillUi$ViewItem;->filterable:Z

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v0, :cond_2

    .line 21
    :cond_1
    move v1, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    iget-object v0, p1, Lcom/android/server/autofill/ui/FillUi$ViewItem;->filter:Ljava/util/regex/Pattern;

    .line 33
    if-eqz v0, :cond_3

    .line 35
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 42
    move-result v1

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    iget-object v0, p1, Lcom/android/server/autofill/ui/FillUi$ViewItem;->value:Ljava/lang/String;

    .line 46
    if-nez v0, :cond_4

    .line 48
    iget-object p0, p1, Lcom/android/server/autofill/ui/FillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    .line 50
    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    .line 53
    move-result-object p0

    .line 54
    if-nez p0, :cond_1

    .line 56
    goto :goto_0

    .line 57
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    move-result v1

    .line 65
    :goto_0
    return v1
.end method
