.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;->f$0:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;->f$0:I

    .line 2
    .line 3
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 4
    .line 5
    const/16 v0, 0x1000

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v1, p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 26
    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    const/16 p0, 0x40

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method
