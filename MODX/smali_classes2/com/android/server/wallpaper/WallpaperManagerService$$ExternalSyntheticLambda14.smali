.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(ILjava/io/PrintWriter;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda14;->f$0:Ljava/io/PrintWriter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    const-string v0, "     mEngine="

    .line 2
    .line 3
    const-string v1, "     mToken="

    .line 4
    .line 5
    const-string v2, "     mDisplayId="

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda14;->f$0:Ljava/io/PrintWriter;

    .line 10
    .line 11
    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 12
    .line 13
    packed-switch v3, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_0
    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    .line 47
    .line 48
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_1
    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 69
    .line 70
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    .line 74
    .line 75
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
