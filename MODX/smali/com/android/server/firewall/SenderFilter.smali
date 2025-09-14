.class public abstract Lcom/android/server/firewall/SenderFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FACTORY:Lcom/android/server/firewall/SenderFilter$1;

.field public static final SIGNATURE:Lcom/android/server/firewall/SenderFilter$2;

.field public static final SYSTEM:Lcom/android/server/firewall/SenderFilter$2;

.field public static final SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/SenderFilter$2;

.field public static final USER_ID:Lcom/android/server/firewall/SenderFilter$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/firewall/SenderFilter$1;

    .line 3
    const-string/jumbo v1, "sender"

    .line 6
    invoke-direct {v0, v1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    .line 9
    sput-object v0, Lcom/android/server/firewall/SenderFilter;->FACTORY:Lcom/android/server/firewall/SenderFilter$1;

    .line 11
    new-instance v0, Lcom/android/server/firewall/SenderFilter$2;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderFilter$2;-><init>(I)V

    .line 17
    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SIGNATURE:Lcom/android/server/firewall/SenderFilter$2;

    .line 19
    new-instance v0, Lcom/android/server/firewall/SenderFilter$2;

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderFilter$2;-><init>(I)V

    .line 25
    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM:Lcom/android/server/firewall/SenderFilter$2;

    .line 27
    new-instance v0, Lcom/android/server/firewall/SenderFilter$2;

    .line 29
    const/4 v1, 0x2

    .line 30
    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderFilter$2;-><init>(I)V

    .line 33
    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/SenderFilter$2;

    .line 35
    new-instance v0, Lcom/android/server/firewall/SenderFilter$2;

    .line 37
    const/4 v1, 0x3

    .line 38
    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderFilter$2;-><init>(I)V

    .line 41
    sput-object v0, Lcom/android/server/firewall/SenderFilter;->USER_ID:Lcom/android/server/firewall/SenderFilter$2;

    .line 43
    return-void
.end method

.method public static isPrivilegedApp(Landroid/content/pm/PackageManagerInternal;II)Z
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    .line 3
    if-eq p1, v0, :cond_1

    .line 5
    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 10
    move-result v0

    .line 11
    if-eq p2, v0, :cond_1

    .line 13
    if-nez p2, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 18
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 20
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->isUidPrivileged(I)Z

    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 30
    return p0
.end method
