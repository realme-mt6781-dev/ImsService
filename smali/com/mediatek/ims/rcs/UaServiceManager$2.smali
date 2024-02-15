.class Lcom/mediatek/ims/rcs/UaServiceManager$2;
.super Ljava/lang/Object;
.source "UaServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/rcs/UaServiceManager;->registerSipCallback(ILcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

.field final synthetic val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

.field final synthetic val$phoneId:I

.field final synthetic val$serviceContext:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 266
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$2;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    iput-object p2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$2;->val$serviceContext:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iput-object p3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$2;->val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    iput p4, p0, Lcom/mediatek/ims/rcs/UaServiceManager$2;->val$phoneId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$2;->val$serviceContext:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getSipChannel()Lcom/mediatek/ims/rcsua/SipChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/SipChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$2;->val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    iget v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$2;->val$phoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;->onAvailable(I)V

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$2;->val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    iget v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$2;->val$phoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;->onUnavailable(I)V

    .line 273
    :goto_0
    return-void
.end method
