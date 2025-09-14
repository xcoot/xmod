.class public final synthetic Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerService;

.field public final synthetic f$1:Lcom/android/server/pm/Computer;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageInstallerService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/Computer;

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$2:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageInstallerService;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/Computer;

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$2:I

    .line 11
    .line 12
    check-cast p1, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v1, p0, p1}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageInstallerService;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/Computer;

    .line 25
    .line 26
    iget p0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$2:I

    .line 27
    .line 28
    check-cast p1, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {v1, p0, p1}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageInstallerService;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/Computer;

    .line 41
    .line 42
    iget p0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$2:I

    .line 43
    .line 44
    check-cast p1, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v1, p0, p1}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
