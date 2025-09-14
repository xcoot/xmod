.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 5
    check-cast p2, Ljava/lang/Long;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 10
    move-result-wide v0

    .line 11
    check-cast p3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 13
    check-cast p4, Ljava/lang/String;

    .line 15
    check-cast p5, Landroid/media/MediaRoute2Info;

    .line 17
    packed-switch p0, :pswitch_data_0

    .line 20
    sget p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->$r8$clinit:I

    .line 22
    const-string/jumbo p0, "deselecting"

    .line 25
    invoke-virtual {p1, p3, p4, p5, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->checkArgumentsForSessionControl(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;Ljava/lang/String;)Z

    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    .line 39
    move-result-object p0

    .line 40
    if-nez p0, :cond_1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/media/MediaRoute2Provider;->deselectRoute(Ljava/lang/String;JLjava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 55
    :pswitch_0
    sget p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->$r8$clinit:I

    .line 57
    const-string/jumbo p0, "selecting"

    .line 60
    invoke-virtual {p1, p3, p4, p5, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->checkArgumentsForSessionControl(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;Ljava/lang/String;)Z

    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_2

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    .line 74
    move-result-object p0

    .line 75
    if-nez p0, :cond_3

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/media/MediaRoute2Provider;->selectRoute(Ljava/lang/String;JLjava/lang/String;)V

    .line 89
    :goto_1
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
