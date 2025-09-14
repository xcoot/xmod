.class public final synthetic Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    check-cast p1, Ljava/nio/file/Path;

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    const/4 p0, 0x0

    .line 9
    new-array p0, p0, [Ljava/nio/file/LinkOption;

    .line 11
    invoke-static {p1, p0}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :pswitch_0
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    const-string p1, ".*\\.[ov]dex"

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :pswitch_1
    const/4 p0, 0x0

    .line 32
    new-array p0, p0, [Ljava/nio/file/LinkOption;

    .line 34
    invoke-static {p1, p0}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :pswitch_2
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    const-string p1, ".*\\.(zip|gz)$"

    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 52
    move-result p0

    .line 53
    xor-int/lit8 p0, p0, 0x1

    .line 55
    return p0

    .line 56
    :pswitch_3
    const/4 p0, 0x0

    .line 57
    new-array p0, p0, [Ljava/nio/file/LinkOption;

    .line 59
    invoke-static {p1, p0}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 62
    move-result p0

    .line 63
    return p0

    .line 64
    :pswitch_4
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    .line 67
    move-result-object p0

    .line 68
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    const-string p1, ".*\\.[ov]dex"

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 77
    move-result p0

    .line 78
    return p0

    .line 79
    :pswitch_5
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    .line 82
    move-result-object p0

    .line 83
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    const-string p1, ".*\\.[ov]dex"

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 92
    move-result p0

    .line 93
    return p0

    .line 94
    :pswitch_6
    const/4 p0, 0x0

    .line 95
    new-array p0, p0, [Ljava/nio/file/LinkOption;

    .line 97
    invoke-static {p1, p0}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 100
    move-result p0

    .line 101
    return p0

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
