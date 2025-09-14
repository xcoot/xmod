.class public final Lcom/android/server/HermesBigdataFunction$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/HermesBigdataFunction$1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/HermesBigdataFunction$1;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    const-string/jumbo p1, "dumpstate_skeymaster"

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0

    .line 29
    :pswitch_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    const-string/jumbo v0, "dumpstate_skeymaster"

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    const-string/jumbo p1, "zip"

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_1

    .line 61
    const/4 p0, 0x1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const/4 p0, 0x0

    .line 64
    :goto_1
    return p0

    .line 65
    :pswitch_1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_2

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    const-string/jumbo v0, "dumpstate_skeymaster"

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_2

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    const-string/jumbo p1, "txt"

    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_2

    .line 97
    const/4 p0, 0x1

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    const/4 p0, 0x0

    .line 100
    :goto_2
    return p0

    .line 101
    :pswitch_2
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_3

    .line 107
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 111
    const-string/jumbo v0, "dumpstate_skeymaster"

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 117
    move-result p0

    .line 118
    if-eqz p0, :cond_3

    .line 120
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 124
    const-string/jumbo p1, "zip"

    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 130
    move-result p0

    .line 131
    if-eqz p0, :cond_3

    .line 133
    const/4 p0, 0x1

    .line 134
    goto :goto_3

    .line 135
    :cond_3
    const/4 p0, 0x0

    .line 136
    :goto_3
    return p0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
