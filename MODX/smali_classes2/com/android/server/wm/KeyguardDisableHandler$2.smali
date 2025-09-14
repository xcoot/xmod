.class public final Lcom/android/server/wm/KeyguardDisableHandler$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/KeyguardDisableHandler$Injector;


# instance fields
.field public final synthetic val$policy:Lcom/android/server/policy/WindowManagerPolicy;

.field public final synthetic val$userManager:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/pm/UserManagerInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler$2;->val$policy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/KeyguardDisableHandler$2;->val$userManager:Lcom/android/server/pm/UserManagerInternal;

    .line 7
    .line 8
    return-void
.end method
