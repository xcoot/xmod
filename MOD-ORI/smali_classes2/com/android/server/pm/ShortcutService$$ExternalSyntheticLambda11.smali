.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda11;->f$0:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda11;->f$0:Z

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/pm/ShortcutUser;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutUser;->detectLocaleChange(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
