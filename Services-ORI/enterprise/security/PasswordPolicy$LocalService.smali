.class Lcom/android/server/enterprise/security/PasswordPolicy$LocalService;
.super Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$LocalService;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isChangeRequestedAsUser(I)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$LocalService;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPolicyCache:Lcom/android/server/enterprise/security/PasswordPolicyCache;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicyCache;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicyCache;->mChangeRequested:Ljava/util/Map;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicyCache;->mChangeRequested:Ljava/util/Map;

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p0, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    :goto_0
    monitor-exit v0

    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method
