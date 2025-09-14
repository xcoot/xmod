.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;->f$0:J

    .line 5
    .line 6
    iput p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;->f$0:J

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;->f$1:I

    .line 4
    .line 5
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
