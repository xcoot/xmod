.class public final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDreamingStarted()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onDreamingStarted()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dreaming:Z

    .line 14
    .line 15
    return-void
.end method

.method public final onDreamingStopped()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onDreamingStopped()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dreaming:Z

    .line 14
    .line 15
    return-void
.end method
