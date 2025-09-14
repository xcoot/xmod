.class public final synthetic Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/ModifierShortcutManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/ModifierShortcutManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/ModifierShortcutManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/ModifierShortcutManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mRoleIntents:Ljava/util/Map;

    .line 4
    .line 5
    check-cast p0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method
